import pandas as pd

#init data
data1 = {
    'Make':['ARCTIC CAT'],
    'Model':['Select Model'],
    'Vendor Code':['NACH'],
    'Vendor Name':['NACHMAN INTERNATIONAL CO. LTD'],
    
    'MPN':['AT-05195'],
    
    'AD Item Number':['999772'],
    
    'Vendor Notes':['"OEM:0487-059 LENGTH(FEET/ IN):4.16" LENGTH ( MM ):1270MM ; **GEARSHIFT CABLES REQUIRED IN POLARIS APPLICATIONS, RATHER THAN STANDARD UNIVERSAL JOINTED HARD LINKAGES FOUND IN OTHER OEM UTVS. ** SHIFT CABLES ARE KNOWN TO STRETCH OUTSIDE OF AVAILABLE FACTORY SHIFT-POINT  ADJUSTMENTS. AS WELL AS HAVING A WEAK POINT AT THE  W EARABLE LINKAGES.; **THESE GEARSHIFT CABLES ARE PRODUCED BY THE O.E.M    SUPPLIER, A CERTIFIED ISO/ TS16949 FACTORY. **MADE OF    BLACK PVC OUTER.   INSULATION ** INNER CORE IS COMPOSED OF SOLID STEEL TO REDUCE CABLE STRETCH AND COMPRESSION. ; "'],
}

#Lists of models

list_models = [
    
'Prowler XT 650 4x4 Auto',
'Prowler XT 650 4x4 Auto M4',
'Prowler XT 650 H1',
'Prowler 550',
'Prowler XT 700',
'Prowler XTX 700 LE',
'Prowler XTX 700 H1 EFI',
'Prowler XT 550',
'Prowler XTX 700',
'Prowler XTX 700i',
'Prowler XT 550i'
]

#Range of Years

years = list(range(2009, 2015))

#Function to generate DFs for each model

def generate_df(model, data, year):
    data_copy = data.copy() #creating a copy of data1 to avoid modifying the original
    data_copy['Model'] = model
    data_copy['Year'] = year
    return pd.DataFrame(data_copy)

#Generate DFs for all sets of data
dfs= []
for year in years:
    df1 = pd.concat([generate_df(model, data1, year) for model in list_models], ignore_index = True)
    dfs.append(df1)

#Concatenate or Merge all dataframes
final_df = pd.concat(dfs, ignore_index = True)

#Display
final_df
    
