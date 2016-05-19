module ApplicationHelper
    def sidebar_links(user)
        if user.instance_of? Agent
            [{:href => "#", :icon => "home", :display => "Home"},
            {:href => "#", :icon => "assignment", :display => "View batch"},
            {:href => "#", :icon => "assignment_returned", :display => "Record sales"},
            {:href => "#", :icon => "assignment_return", :display => "Return items"},
            {:href => "#", :icon => "compare_arrows", :display => "Transfer items"},
            {:href => "#", :icon => "book", :display => "View history"},
            {:href => "#", :icon => "power_settings_new", :display => "Log out"}]
        elsif user.instance_of? WarehouseStaffer
            [{:href => "#", :icon => "home", :display => "Home"},
            {:href => "#", :icon => "file_download", :display => "Record delivery"},
            {:href => "#", :icon => "file_upload", :display => "Issue inventory"}]
        else
            [{:href => "#", :icon => "home", :display => "Home"},
            {:href => "#", :icon => "assignment", :display => "View items"},
            {:href => "#", :icon => "assignment_ind", :display => "View agents"}]
        end
    end
end
