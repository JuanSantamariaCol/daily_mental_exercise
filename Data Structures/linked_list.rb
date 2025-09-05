# Nodo de la lista
class Node
    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next = nil
    end
end

# Lista encadenada
class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    # Agregar un nodo al final
    def append(value)
    new_node = Node.new(value)
        if @head.nil?
            @head = new_node
        else
            current = @head
            current = current.next while current.next
            current.next = new_node
        end
    end
    
    #Agregar un nodo al inicio V0
    def preappend(value)
        new_node = Node.new(value)
        if @head.nil? 
            @head  = new_node
        else
            old_head = @head
            @head = new_node
            @head.next = old_head
        end
    end

    # Agregar un nodo al inicio V1 <-- mejor imple,entacion
    def prepend(value)
        new_node = Node.new(value)
        new_node.next = @head #Antiguo nodo 
        @head = new_node #nuevo nodo es el head
        new_node
    end

    # Mostrar la lista
    def display
        current = @head
        while current
            print "#{current.value} -> "
            current = current.next
        end
        puts "nil"
    end

    # Buscar un valor
    def find(value)
        current = @head
        while current
        return current if current.value == value
        current = current.next
        end
        nil
    end

    # Eliminar un nodo
    def delete(value)
        return if @head.nil?

        if @head.value == value
        @head = @head.next
        return
        end

        current = @head
        while current.next
        if current.next.value == value
            current.next = current.next.next
            return
        end
        current = current.next
        end
    end
end

# Uso
list = LinkedList.new
list.append(10)
list.append(20)
list.append(30)
list.display # 10 -> 20 -> 30 -> nil

list.delete(20)
list.display # 10 -> 30 -> nil

puts list.find(30).value # 30