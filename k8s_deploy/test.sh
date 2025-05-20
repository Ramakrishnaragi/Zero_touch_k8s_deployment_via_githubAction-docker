for j in {1..10}; do  
    for i in {1..100000}; do  
        curl -s -o /dev/null -w "%{http_code}\n" http://a1bcc66fd09a24a9d8cd4443e044b2ce-2073163626.ap-south-1.elb.amazonaws.com/ &  
    done  
    wait  # Wait for all background curl processes to finish before next iteration
done
