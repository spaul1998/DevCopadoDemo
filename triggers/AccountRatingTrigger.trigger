trigger AccountRatingTrigger on Account (before insert, before update) {
    
    for(Account acc : Trigger.new){
        if(acc.Type == 'Prospect'){
            acc.Rating = 'Hot';
        }else if(acc.Type == 'Customer - Direct' || acc.Type == 'Customer - Channel'){
            acc.Rating = 'Warm';
        }
        else{
            acc.Rating = 'Cold';
        }
    }
}