trigger AccountTrigger on Account (before update){
	if (Trigger.isUpdate){
		Map<Id, Account> oldAcc = (Map<Id, Account>)Trigger.oldMap;
		System.debug(oldAcc);
		for (Account ac : Trigger.new){
			ac.Description = 'Industry updated from' + ac.Industry + ' ' + oldAcc.get(ac.Id).Industry;
		}
	}
}