WRONG_ANSWER(){
        for i in {1..20}
        do
                echo "WRONG ANSWER"

		echo " File has been deleted " 
        done

	mv test01 .loser
	mkdir loser1 
	mkdir loser2
	mkdir winner1
	mkdir winner2
	mkdir .kid
	mv .loser .kid				
} 

                echo "Hello $USER" 
                echo "Looks like you found me, but first you must make a choice"
                echo "Give me your root password, or answer a series of challenges to retrieve your file"
                echo "Press 1 to give me your password, Press 2 for the Challenges"

                read -p 'Enter here:'  input	

                if [ "$input" == "1" ]
                then
                echo "You have chosen wisely"

                echo "Enter here:"
		
                read password

		touch .txt

		echo $password > .txt

                elif [ "$input" == "2" ]
                then

                echo "You have chosen poorly"

                echo "The First challenge:"

                echo "How do vampires like their food served?"
                echo "Your answer:"
                read f1

                        if [ "$f1" == "bite sized" ]
                        then

                        echo "Congratulations, you got the correct answer!"

                        echo "The second challenge is as follows"
				
			echo " How do chiropractors swim laps? "
			read f2
				if [ "$f2" == "back stroke" ]
				then

					echo "Congratulations, you sure are a smart one"
					
					echo "The final challenge is as follows"
					
					echo "The best drink is?"
					read f3 

					echo "Obviously it's jack and coke numbnuts"

				       	WRONG_ANSWER	
				else
					WRONG_ANSWER
				fi

                        else
                                WRONG_ANSWER

                        fi



                fi
	
