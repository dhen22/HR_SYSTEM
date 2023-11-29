<!-- <h1>Welcome to <?php echo $_settings->info('name') ?></h1> -->
<hr class="bg-light">
<?php if($_settings->userdata('type') != 3): ?>
<div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-light elevation-1"><i class="fas fa-file-alt"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Pending Applications</span>
                <span class="info-box-number text-right">
                  <?php 
                    /* $pending = $conn->query("SELECT * FROM `leave_applications` where date_format(date_start,'%Y') = '".date('Y')."' and date_format(date_end,'%Y') = '".date('Y')."' and status = 0 ")->num_rows; */
                    $pending = $conn->query("SELECT * FROM `leave_applications` where type != 0 and status = 0 ")->num_rows;
                    echo number_format($pending);
                  ?>
                  <?php ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-building"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Departments</span>
                <span class="info-box-number text-right">
                  <?php 
                    $department = $conn->query("SELECT id FROM `department_list` ")->num_rows;
                    echo number_format($department);
                  ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-lightblue elevation-1"><i class="fas fa-th-list"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Employees</span>
                <span class="info-box-number text-right">
                <?php 
                    $employee = $conn->query("SELECT DISTINCT(user_id) as total FROM `employee_meta`")->num_rows;
                    echo number_format($employee);
                  ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-purple elevation-1"><i class="fas fa-list"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Type of Leave</span>
                <span class="info-box-number text-right">
                <?php 
                    $leave_types = $conn->query("SELECT id FROM `leave_types` where status = 1 ")->num_rows;
                    echo number_format($leave_types);
                  ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
        </div>
<?php else: ?>
  <div class="row">
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box">
        <span class="info-box-icon bg-light elevation-1"><i class="fas fa-file-alt"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Pending Applications</span>
          <span class="info-box-number text-right">
            <?php 
              $pending = $conn->query("SELECT * FROM `leave_applications` where date_format(date_start,'%Y') = '".date('Y')."' and date_format(date_end,'%Y') = '".date('Y')."' and status = 0 and user_id = '{$_settings->userdata('id')}' ")->num_rows;
              echo number_format($pending);
            ?>
            <?php ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box">
        <span class="info-box-icon bg-lightblue elevation-1"><i class="fas fa-th-list"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Upcoming Leave</span>
          <span class="info-box-number text-right">
            <?php 
              $upcoming = $conn->query("SELECT * FROM `leave_applications` where date(date_start) > '".date('Y-m-d')."' and status = 1 and user_id = '{$_settings->userdata('id')}' ")->num_rows;
              echo number_format($upcoming);
            ?>
            <?php ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
  </div>
<?php endif; ?> 


<!-- ANNOUNCENMENTS ANNOUNCENMENTS ANNOUNCENMENTS ANNOUNCENMENTS ANNOUNCENMENTS ANNOUNCENMENTS ANNOUNCENMENTS -->

<style>
  .msg_announce {
      color: white; 
      padding: 15px 15px; 
      border: none; 
      border-radius: 2px; 
      text-decoration: none; 
      display: inline-block; 
  line-height: 1px;
  width: 100px;
  }

.msg_announce:hover {
      color: white; 
  }

  
</style>

<div class="card">
  <div class="card-header">
      <h3 class="card-title">Today's Announcements</h3>
      <div class="text-right">
        <a href="?page=announcement/announcement" class="btn btn-default btn-sm">See All</a>
      </div>
  </div>
    
  <div class="card-body">
    <div class="container-fluid">
      <div class="row">
        <?php
        $qry = $conn->query("SELECT * from `announcement_list` order by date_created desc LIMIT 3");
        while ($row = $qry->fetch_assoc()):
            $row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
        ?>
        <div class="col-md-4 mb-3">
          <div class="card " style="background-color: light; height: 150px;">
            <div class="card-body d-flex flex-column">
              <h5 class="card-title" style="font-weight: bold;"><?php echo $row['title'] ?></h5>
              <p class="card-text"><?php echo ($row['date_updated'] != null) ? date('F j, Y', strtotime($row['date_updated'])) : date('F j, Y', strtotime($row['date_created'])); ?></p>
              <div class="mt-auto">
                  <a class="btn btn-default btn-sm view_announce" style="border-radius:5px;" href="./?page=announcement/view_home&id=<?php echo $row['id'] ?>"><span class="fa fa-eye text-primary"></span> View</a>
                  <a class="btn btn-primary msg_announce" style="border-radius:5px;" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span></span> Message </a>
              </div>
            </div>
          </div>
        </div>
        <?php endwhile; ?>
      </div>
    </div>
  </div>
</div>

<div class="card">
  <div class="card-header">
    <h3 class="card-title">Latest Memos</h3> 
      <div class="text-right">
        <a href="?page=memo/memo" class="btn btn-default btn-sm">See All</a>
      </div>
  </div>
  <div class="card-body">
    <div class="container-fluid">
      <table class="table">
        <thead>
          <tr>
            <th>Title</th>
            <th>From</th>
            <th>Date</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $qry = $conn->query("SELECT * from `memo_list` order by date_created desc LIMIT 5");
          while ($row = $qry->fetch_assoc()):
              $row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
          ?>
          <tr>
            <td style="font-weight: bold;"><?php echo $row['title'] ?></td>
            <td><?php echo $row['from_'] ?></td>
            <td><?php echo ($row['date_updated'] != null) ? date('F j, Y', strtotime($row['date_updated'])) : date('F j, Y', strtotime($row['date_created'])); ?></td>
            <td>
              <a class="btn btn-default btn-sm view_memo" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-eye text-primary"></span> View</a>
            </td>
          </tr>
          <?php endwhile; ?>
        </tbody>
      </table>
    </div>
  </div>
</div>

<script>
    $(document).ready(function () {
        $('.view_announce').click(function () {
            var announcementId = $(this).data('id');
            // Assuming you have defined the uni_modal function to open the modal
            uni_modal("", "announcement/view_announce.php?id=" + announcementId);
        });
        $('.view_memo').click(function(){
          uni_modal("</i>","memo/view_memo.php?id="+$(this).attr('data-id'))
        })
        $('.msg_announce').click(function(){
          uni_modal("</i>","announcement/msg_announce.php?id="+$(this).attr('data-id'))
        });
    });
</script>



<!-- -------------- -->
