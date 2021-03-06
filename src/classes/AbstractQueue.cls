/* Copyright 2017 George Doenlen

   Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
   documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
   rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and
   to permit persons to whom the Software is furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all copies or substantial
   portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
   THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
   IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
   AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
   OTHER DEALINGS IN THE SOFTWARE. */

/**
 * Abstract Queue
 * <table>
 *  <caption>Modification Log</caption>
 *  <tr>
 *      <th>Developer</th>
 *      <th>Date</th>
 *      <th>Description</th>
 *      <th>Version</th>
 *  </tr>
 *  <tr>
 *      <td>George Doenlen</td>
 *      <td>29 JUN 2016</td>
 *      <td>Original Version</td>
 *      <td>1.0.0</td>
 *  </tr>
 * </table>
 */
global abstract class AbstractQueue extends AbstractCollection implements Queue {

    /**
     * Constructor Initializes the Queue's type.
     *
     * @param t The type of the Queue.
     */
    protected AbstractQueue(final Type t) {
        super(t);
    }

    /**
     * Adds the element to the queue. If there is no room in the queue the element won't be added.
     * For Force.com primitives.
     *
     * @param o The element to be added.
     * @return True if the element was added to the queue.
     */
    global virtual Boolean offer(final Object o) {
        super.add(o);
        return true;
    }

    /**
     * Retrieves and removes the head of this queue, or returns null if this queue is empty.
     *
     * @return The head of the queue.
     */
    global abstract Object poll();

    /**
     * Retrieves, but does not remove, the head of this queue, or returns null if this queue is empty.
     *
     * @return The head of the queue.
     */
    global abstract Object peek();
    
    /**
     * Implementing to satisfy the interface.
     *
     * @return nothing
     * @throws NoSuchElementException if this queue is empty
     */
    global override Boolean remove(final Object o) {
        throw new UnsupportedOperationException();
        return false;
    }

    /**
     * Removes all of the elements from this queue.
     * The queue will be empty after this call returns.
     *
     * This implementation repeatedly invokes poll until it
     * returns <tt>null</tt>.
     */
    global override void clear() {
        while (poll() != null);
    }


    /**
     * Implementing to satisfy the collection super interface.
     *
     * @throws UnsupportedOperationException
     */
    global override Boolean contains(final Object o) {
        throw new UnsupportedOperationException('Contains is not supported by queues.');
    }
}