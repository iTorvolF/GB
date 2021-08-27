class Hello
  def hello
    time = Time.now

    if (time.hour >= 6) && (time.hour < 12)
      puts 'Доброе утро!'
    elsif (time.hour >= 12) && (time.hour < 18)
      puts 'Добрый день!'
    elsif (time.hour >= 18) && (time.hour < 24)
      puts 'Добрый вечер!'
    else
      puts 'Доброй ночи!'     
    end
  end
end

