students = [
    {
        first_name: 'Ahmed',
        last_name: 'Althagafi'
    },
    {
        first_name: 'Norah',
        last_name: 'Alshehri',
    },
    {
        first_name: 'Haneen',
        last_name: 'Alghamdi',
    }
]


def method_q1(arr)
    upper_case_full_names = []
    i = 0
    until i == arr.length do 
        keys = arr[i].keys
        j = 0
        string = ""
        while j < keys.length
            string += arr[i][keys[j]].upcase
            if j == 0
                string += " "
            end
            j += 1
        end
        upper_case_full_names.push(string)
        i += 1    
    end
    return upper_case_full_names 
end  


puts method_q1(students)


######################################################################


users = [
    {
        name: 'Salman',
        orders: [
            {
                description: 'a bike'
            }
        ]
    },
    {
        name: 'Saeed',
        orders: [
            {
                description: 'bees'
            },
            {
                description: 'fishing rod'
            }
        ]
    },
    {
        name: 'Danyah',
        orders: [
            {
                description: 'a MacBook'
            },
            {
                description: 'The West Wing DVDs'
            },
            {
                description: 'headphones'
            },
            {
                description: 'a kitten'
            }
        ]
    }
]
  

  
def method_q2(arr)
    first_order_for_each_user = []
    i = 0
    until i == arr.length do
        keys = arr[i].keys
        first_order_for_each_user.push(arr[i][keys[1]][0])
        i += 1
    end

    return first_order_for_each_user

end


puts method_q2(users)


######################################################################

people = [
    {
        name: 'Jawaher',
        transactions: [
            {
                type: 'COFFEE',
                amount: 7.43
            },
            {
                type: 'TACOS',
                amount: 14.65
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    },
    {
        name: 'Nader',
        transactions: [
            {
                type: 'BIKES',
                amount: 800.00
            },
            {
                type: 'TACOS',
                amount: 14.65
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    },
    {
        name: 'Samah',
        transactions: [
            {
                type: 'COFFEE',
                amount: 7.43
            },
            {
                type: 'COFFEE',
                amount: 100.00
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    }
]
  

def method_q3(arr)
    coffee_average_per_person = []
    i = 0
    until i == arr.length do
        keys = arr[i].keys
        j = 0
        total = 0
        l = 0
        until j == arr[i][keys[1]].length do
            mykeys = arr[i][keys[1]][j].keys
            if arr[i][keys[1]][j][mykeys[0]] == "COFFEE"
                total += arr[i][keys[1]][j][mykeys[1]]
                l += 1
            end
            j += 1
        end
        hash = {
            name: arr[i][keys[0]],
            coffee_average: total / l
        }
        coffee_average_per_person.push(hash)
        i += 1
    end
    return coffee_average_per_person
end

puts method_q3(people)


######################################################################


stores = [
    {
        store_name: 'Jarir',
        products: [
            {
                description: 'Titanium',
                price: 9384.33
            },
            {
                description: 'Gold',
                price: 345.54
            }
        ]
    },
    {
        store_name: 'Danub',
        products: [
            {
                description: 'Silver',
                price: 654.44
            },
            {
                description: 'Ruby',
                price: 323.43
            }
        ]
    },
    {
        store_name: 'Souq',
        products: [
            {
                description: 'Opal',
                price: 345.43
            },
            {
                description: 'Sapphire',
                price: 899.33
            }
        ]
    }
  ]


  def method_q4(arr)
    most_expensive_products_by_store = []
    i = 0
    until i == arr.length do
        keys = arr[i].keys
        j = 0
        max = 0
        temp = -1
        until j === arr[i][keys[1]].length
            mykeys = arr[i][keys[1]][j].keys
            if max < arr[i][keys[1]][j][mykeys[1]]
                max = arr[i][keys[1]][j][mykeys[1]]
                temp = j
            end
            j +=1
        end
        hash = {
            store_name: arr[i][keys[0]],
            most_expensive_product: {
                description: arr[i][keys[1]][temp][mykeys[0]],
                price: arr[i][keys[1]][temp][mykeys[1]]
            }
        }
        most_expensive_products_by_store.push(hash)
        i += 1
    end
    return most_expensive_products_by_store
end

puts method_q4(stores)