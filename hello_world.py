def hello_World():
    print("This is automation training Program")

def take_input():
    try:
        variable = input("put your input")
        print(variable + 100)
    except Exception as e:
        print(e)

def for_loop():
    count = 0
    for i in range(0,1000):
        count = count + 1
    return count
if __name__ == "__main__":
    a = 15
    print(a<<1)
    print(a>>1)
