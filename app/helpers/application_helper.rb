module ApplicationHelper

    def full_title(page_title = '')
        base_title = "AMDG"
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end

    def sidebar_links(u_t)
        if u_t == "agent"
            [{:href => root_path, :icon => "home", :display => "Home", :method => :get},
            {:href => inventories_path, :icon => "assignment", :display => "View batch", :method => :get},
            {:href => "#", :icon => "assignment_returned", :display => "Record sales", :method => :get},
            {:href => "#", :icon => "assignment_return", :display => "Return items", :method => :get},
            {:href => "#", :icon => "compare_arrows", :display => "Transfer items", :method => :get},
            {:href => "#", :icon => "book", :display => "View history", :method => :get},
            {:href => logout_path, :icon => "power_settings_new", :display => "Log out", :method => :delete}]
        elsif u_t == "warehouse_staffer"
            [{:href => root_path, :icon => "home", :display => "Home", :method => :get},
            {:href => deliveries_path, :icon => "file_download", :display => "Record delivery", :method => :post},
            {:href => inventories_path, :icon => "file_upload", :display => "Issue inventory", :method => :post},
            {:href => logout_path, :icon => "power_settings_new", :display => "Log out", :method => :delete}]
        else
            [{:href => root_path, :icon => "home", :display => "Home", :method => :get},
            {:href => "#", :icon => "assignment", :display => "View items", :method => :get},
            {:href => "#", :icon => "assignment_ind", :display => "View agents", :method => :get},
            {:href => logout_path, :icon => "power_settings_new", :display => "Log out", :method => :delete}]
        end
    end
end
