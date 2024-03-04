<style>
    body {
        font-family: Arial, sans-serif;
    }

    .nav li a {
        font-size: 16px;
        color: #333;
        text-decoration: none;
        transition: color 0.3s;
    }

    .nav-item.dropdown {
        position: relative;
    }

    .nav-item.dropdown .nav-link {
        display: block;
        padding: 8px 8px;
        color: #333;
        text-decoration: none;
        transition: background-color 0.3s;
    }
</style>

<!-- Main Sidebar Container -->
      <aside class="main-sidebar sidebar-light-primary disabled elevation-5 sidebar-no-expand" style="background-color: white;">
        <!-- Brand Logo -->
        <a href="<?php echo base_url ?>admin" class="brand-link" style="background-color: #0039a6 ; color: white; text-align: center;">
        <img src="<?php echo validate_image($_settings->info('logo'))?>" alt="Store Logo" class="brand-image img-circle elevation-3" style="opacity: .8;width: 1.7rem;height: 1.7rem;max-height: unset">
        <span class="brand-text font-weight-light text-white"><?php echo $_settings->info('short_name') ?></span>
        </a>
        <!-- Sidebar -->
        <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-transition os-host-scrollbar-horizontal-hidden">
          <div class="os-resize-observer-host observed">
            <div class="os-resize-observer" style="left: 0px; right: auto;"></div>
          </div>
          <div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;">
            <div class="os-resize-observer"></div>
          </div>
          <div class="os-content-glue" style="margin: 0px -8px; width: 249px; height: 646px;"></div>
          <div class="os-padding">
            <div class="os-viewport os-viewport-native-scrollbars-invisible" style="overflow-y: scroll;">
              <div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;">
                <!-- Sidebar user panel (optional) -->
                <div class="clearfix"></div>
                <!-- Sidebar Menu -->
                <nav class="mt-4">
                   <ul class="nav nav-pills nav-sidebar flex-column nav-compact nav-child-indent nav-collapse-hide-child" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item dropdown">
                      <a href="./" class="nav-link nav-home">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                          Dashboard
                        </p>
                      </a>
                    </li> 

                    <?php $usertype = $_settings->userdata('type');
                        if($usertype != 1 && $usertype !=2):?>
                        

                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=employees/records&id=<?php echo $_settings->userdata('id') ?>" class="nav-link nav-employees_records">
                        <i class="nav-icon fas fa-id-card"></i>
                        <p>
                          My Records
                        </p>
                      </a>
                    </li>
                    <?php else: ?>
                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=employees" class="nav-link nav-employees">
                        <i class="nav-icon fas fa-user-friends"></i>
                        <p>
                          Employees List
                        </p>
                      </a>
                    </li>
                    <?php endif; ?>
                    
                    <!-- HIDE MUNA TO PANG PHASE 2 -->

                    <!-- <?php if($_settings->userdata('type') != 2): ?>
                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=leave_applications" class="nav-link nav-leave_applications">
                        <i class="nav-icon fas fa-file-alt"></i>
                        <p>
                          Application List
                        </p>
                      </a>
                    </li>
                    <?php endif; ?> -->

                    <?php if($_settings->userdata('type') != 3): ?>
                    
                    <li class="nav-item dropdown">
                      <a href="#" class="nav-link nav-maintenance_department nav-maintenance_designation">
                        <i class="nav-icon fa fa-university"></i>
                        <p>
                          Position
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview memos-submenu">
                        <li class="nav-item">
                          <a href="<?php echo base_url ?>admin/?page=maintenance/department" class="nav-link">
                            <i class="nav-icon fas fa-building"></i>
                            <p>
                              Departments
                            </p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="<?php echo base_url ?>admin/?page=maintenance/designation" class="nav-link">
                            <i class="nav-icon fas fa-th-list"></i>
                            <p>
                              Designations
                            </p>
                          </a>
                        </li>
                      </ul>
                    </li>

                    <!-- HIDE MUNA PANG PHASE 2 NA TO -->

                    <!-- <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=maintenance/leave_type" class="nav-link nav-maintenance_leave_type">
                        <i class="nav-icon fas fa-list"></i>
                        <p>
                          Leave Type List
                        </p>
                      </a>
                    </li> -->

                    <?php endif; ?>
                    <?php if ($_settings->userdata('type') != 2 && $_settings->userdata('type') != 3): ?>

                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=user/list" class="nav-link nav-user_list">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                          User List
                        </p>
                      </a>
                    </li>
                    <?php endif; ?>
                    <?php if($_settings->userdata('type') != 3): ?>
                    

                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=reports" class="nav-link nav-reports">
                        <i class="nav-icon fas fa-file"></i>
                        <p>
                          Reports
                        </p>
                      </a>
                    </li>
                    

                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=system_info" class="nav-link nav-system_info">
                        <i class="nav-icon fas fa-cogs"></i>
                        <p>
                          Settings
                        </p>
                      </a>
                    </li>
                    <?php endif; ?>

                    <li class="nav-header">Events</li>
                    
                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=announcement/announcement" class="nav-link nav-announcement_announcement">
                        <i class="nav-icon fa fa-arrow-circle-right"></i>
                        <p>
                          Announcements
                        </p>
                      </a>
                    </li>

                    <li class="nav-item dropdown">
                      <a href="#" class="nav-link nav-memo_memo nav-memo_previous_memo">
                        <i class="nav-icon fas fa-envelope"></i>
                        <p>
                          Company Memo
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview memos-submenu">
                        <li class="nav-item">
                          <a href="<?php echo base_url ?>admin/?page=memo/memo" class="nav-link">
                            <i class="nav-icon fa fa-folder-open"></i>
                            <p>Memo List</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="<?php echo base_url ?>admin/?page=memo/previous_memo" class="nav-link">
                            <i class="nav-icon fas fa-file"></i>
                            <p>Previous Memos</p>
                          </a>
                        </li>
                      </ul>
                    </li>

                    <li class="nav-header">Manual</li>

                    <!-- only the employee can see this policies -->
                    <?php if($_settings->userdata('type') == 3): ?>
                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=policies/policies" class="nav-link nav-policies_policies">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                          Policies
                        </p>
                      </a>
                    </li>

                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=offense/offense" class="nav-link nav-offense_offense">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                          Table of offense
                        </p>
                      </a>
                    </li>
                    <?php endif; ?>

                    <!-- POLICIES -->

                    <?php if($_settings->userdata('type') != 3): ?>
                    <li class="nav-item dropdown">
                      <a href="#" class="nav-link nav-policies_policies nav-policies_list_policies">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                          Policies
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview policies-submenu">
                        <li class="nav-item">
                          <a href="<?php echo base_url ?>admin/?page=policies/policies" class="nav-link">
                            <i class="nav-icon fas fa-file"></i>
                            <p>View Policies</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="<?php echo base_url ?>admin/?page=policies/list_policies" class="nav-link">
                            <i class="nav-icon fas fa-file"></i>
                            <p>List of Policies</p>
                          </a>
                        </li>
                      </ul>
                    </li>

                    <!-- TABLE OF OFFENSE ALL USER CAN VIEW THIS -->

                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=offense/offense" class="nav-link nav-offense_offense nav-offense_list_offense">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                          Table of Offense
                        </p>
                      </a>
                    </li>
                    
                    <?php endif; ?>
                    
                  </ul>
                </nav>
                <!-- /.sidebar-menu -->
              </div>
            </div>
          </div>
          <div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden">
            <div class="os-scrollbar-track">
              <div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div>
            </div>
          </div>
          <div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden">
            <div class="os-scrollbar-track">
              <div class="os-scrollbar-handle" style="height: 55.017%; transform: translate(0px, 0px);"></div>
            </div>
          </div>
          <div class="os-scrollbar-corner"></div>
        </div>
        <!-- /.sidebar -->
      </aside>
      <script>
    $(document).ready(function(){
      var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
      var s = '<?php echo isset($_GET['s']) ? $_GET['s'] : '' ?>';
      page = page.split('/');
      page = page.join('_');

      if($('.nav-link.nav-'+page).length > 0){
             $('.nav-link.nav-'+page).addClass('active')
        if($('.nav-link.nav-'+page).hasClass('tree-item') == true){
            $('.nav-link.nav-'+page).closest('.nav-treeview').siblings('a').addClass('active')
          $('.nav-link.nav-'+page).closest('.nav-treeview').parent().addClass('menu-open')
        }
        if($('.nav-link.nav-'+page).hasClass('nav-is-tree') == true){
          $('.nav-link.nav-'+page).parent().addClass('menu-open')
        }

      }
     
    })
  </script>