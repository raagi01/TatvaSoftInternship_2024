using DataAccessLayer.Repository;
using DataAccessLayer.Repository.Entities;
using Microsoft.EntityFrameworkCore;

namespace DataAccessLayer.BooksService
{
    public class BooksService
    {
        private readonly AppDbContext _cIDbContext;

        public BooksService(AppDbContext cIDbContext)
        {
            _cIDbContext = cIDbContext;
        }

        public List<Book> GetAll()
        {
            return _cIDbContext.Books.ToList();
        }

        public Book GetById(int id) => _cIDbContext.Books.FirstOrDefault(b => b.Id == id);
        public void Add(Book book)
        {
            _cIDbContext.Books.Add(book);
            _cIDbContext.SaveChanges();
        }
        public void Update(Book book)
        {
            var existingBook = GetById(book.Id);
            if (existingBook != null)
            {
                existingBook.Title = book.Title;
                existingBook.Author = book.Author;
                existingBook.Genre = book.Genre;

                _cIDbContext.Books.Update(existingBook);
                _cIDbContext.SaveChanges();

            }
        }

            public void Delete(int id)
        {
            var book = _cIDbContext.Books.FirstOrDefault(b => b.Id == id);
            if (book != null)
            {
                _cIDbContext.Books.Remove(book);
                _cIDbContext.SaveChanges();
            }
        }
    }
}
