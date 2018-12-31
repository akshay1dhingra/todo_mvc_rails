module ItemsHelper

    def li_class_for_item(item)
        "completed" if item.complete?
    end

    def form_for_item_status(item)
        form_for([item.list, item]) do |f|
            f.check_box :status, :class => "toggle", :checked => item.complete?
        end
    end 
end
