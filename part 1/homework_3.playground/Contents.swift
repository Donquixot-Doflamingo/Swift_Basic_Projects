var result : UInt
var time : String

var value1 : UInt = 1
var value2 : UInt = 11
var label : String = "hours"
var label0 : String = "hour"

func compare(label1: inout String, label2: inout String) -> String{
    if (label1 == "day" && label2 == "days")
    {
        label1 = label2
        
        return label1
    }
    else if (label1 == "hour" && label2 == "hours")
    {
        label1 = label2
        
        return label1
    }
    else if (label1 == "minute" && label2 == "minutes")
    {
        label1 = label2
        
        return label1
    }
    else if (label1 == "second" && label2 == "seconds")
    {
        label1 = label2
        
        return label1
    }
    else if (label1 == "days" && label2 == "day")
    {
        label2 = label1
        return label2
    }
    else if (label1 == "hours" && label2 == "hour")
    {
        label2 = label1
        return label2
    }
    else if (label1 == "minutes" && label2 == "minute")
    {
        label2 = label1
        
        return label2
    }
    else if (label1 == "seconds" && label2 == "second")
    {
        label2 = label1
        return label2
    }
    else{
        label1 != label2
        return "false"
    }
}

func conversionCheck (_ value : inout UInt, _ label : inout String) -> (UInt, String){
    if value == 60 && (label == "minutes" || label == "seconds" || label == "minute" || label == "second" )
    {
        if (label == "seconds" || label == "second")
        {
            value = 1
            label = "minute"
        }
        else if (label == "minutes" || label == "minute")
        {
            value = 1
            label = "hour"
        }
    }
    else if (value == 24 && (label == "hours" || label == "hour"))
    {
        value = 1
        label = "day"
    }

    return(value, label)
}
//main code
func timeAdder(value1: UInt, label1: inout String, value2: UInt, label2: inout String) -> (UInt, String)
{
    var value3 : UInt = 0
    var label3 : String = ""
    
    compare(label1: &label1, label2: &label2)
    
    value3 = value1 + value2
    
    if label1 == label2 {
        label3 = label2
    }

    switch label3 {
        case "seconds": conversionCheck(&value3, &label3)
                        break
        case "minutes": conversionCheck(&value3, &label3)
                        break
        case "hours": conversionCheck(&value3, &label3)
                        break
        default: print("false")
            return (value2, label2)
    }
    return (value3, label3)
}
//executing code
timeAdder(value1: value1, label1: &label, value2: value2, label2: &label0)
