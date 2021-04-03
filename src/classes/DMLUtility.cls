/**
 * Created by priya on 02/04/2021.
 */

public  class DMLUtility {
    public static List<String> processDmlMessage(DmlException e) {
        List<String> errorMessages = new List<String>();
        for (Integer i = 0; i < e.getNumDml(); i++) {
            errorMessages.add(e.getDmlMessage(i));
            System.debug(e.getDmlMessage(i));
        }
        return errorMessages;
    }
}