using BooksProject.Models;
using Microsoft.AspNetCore.Mvc;
using BooksProject.Services;

namespace Books.Controllers
{
    public class BooksController : Controller
    {
        private readonly BooksServices _booksService;

        public BooksController(BooksServices booksService)
        {
            _booksService = booksService;
        }

        [HttpGet("GetBooks")]
        public ActionResult<List<Book>> Get() { return _booksService.GetAll(); }

        [HttpGet("{id}")]
        public ActionResult<Book> Get(int id)
        {
            var book = _booksService.GetById(id);
            if (book == null)
            {
                return NotFound();
            }
            return book;
        }

        //Inserting a new Book
        [HttpPost("{id}")]
        public ActionResult<Book> Post(Book book)
        {
            _booksService.Add(book);
            return CreatedAtAction(nameof(Get), new { id = book.Id }, book);
        }

        //Updating the existing book
        [HttpPut("{id}")]
        public IActionResult Put(int id, Book book)
        {
            if (id != book.Id)
            {
                return BadRequest();
            }
            var existingBook = _booksService.GetById(id);
            if (existingBook == null)
            {
                return NotFound();
            }
            _booksService.Update(book);
            return NoContent();
        }

        //Create a Delete Endpoint
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, Book book)
        {
            if (id != book.Id)
            {
                return BadRequest();
            }
            var existingBook = _booksService.GetById(id);
            if (existingBook == null)
            {
                return NotFound();
            }
            _booksService.Delete(book);
            return NoContent();
        }
        //Pass ID
        //Check in memory if an object with that id exists
        //If object is found then Remove it from memory.
    }
}
