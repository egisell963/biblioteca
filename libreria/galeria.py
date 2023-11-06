class Galeria:

    def __init__(self, request):
        self.request = request
        self.session = request.session
        galeria = self.session.get('galeria')
        if not galeria:
            self.session['galeria'] = {}
            self.galeria = self.session['galeria']
        
        else:
            self.galeria = galeria


    def alquilar(self, libro):

        id = str(libro.id_libro)
        self.galeria[id]={

                'id_libro': libro.id_libro,
                'titulo' : libro.titulo,
                'autor'  : libro.autor,
                'descripcion': libro.descripcion,
                'fecha': libro.fecha,
        }
    

    def guardar(self):

        self.session['galeria'] = self.galeria
        self.session.modified = True


    def devolver(self, libro):
        id=str(libro.id_libro)
        if id in self.galeria:
            del self.galeria[id]
            self.guardar()


    def devolver_todo(self):

        self.session['galeria'] = {}
        self.session.modified = True

