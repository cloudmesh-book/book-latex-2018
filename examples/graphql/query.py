result = schema.execute('{ hello }')
print(result.data['hello']) # "Hello stranger"
