require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"


#test commit sage


class Controller
  command = ARGV.shift.to_sym
  List.create(:name => "The List")

  def self.run
    case command
      when :add
        Task.create(:entry => ARGV.join(''), :list_id => 1)
      when :list
        Task.all
      when :delete
        Task.where(:id => ARGV.shift).destroy
      when :complete
        Task.where(:id => ARGV.shift).update(:complete => true)

    end
  end

end

