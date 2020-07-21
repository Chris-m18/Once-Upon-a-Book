import api from './api-helper';

export const getAllBooks = async () => {
  const resp = await api.get('/categories/1/books');
  return resp.data;
};

export const getOneBook = async (id) => {
  const resp = await api.get(`/categories/1/books/${id}`);
  return resp.data;
}

export const postBook = async (id, bookData) => {
  const resp = await api.post(`/categories/${id}/books`, { book: bookData })
  return resp.data;
}

export const putBook = async (id, bookData) => {
  const resp = await api.put(`/categories/1/books/${id}`, { book: bookData })
  return resp.data;
}

export const deleteBook = async (id) => {
  const resp = await api.delete(`/categories/1/books/${id}`);
  return resp
}

export const getAllCategories = async () => {
  const resp = await api.get('/categories');
  return resp.data;
};


