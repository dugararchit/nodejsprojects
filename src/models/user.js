/**
 * @swagger
 *  components:
 *    schemas:
 *      Register:
 *        type: object
 *        required:
 *          - name
 *          - surname
 *          - email
 *          - username
 *          - password
 *        properties:
 *          name:
 *            type: string
 *          surname:
 *           type: string
 *          email:
 *            type: string
 *            format: email
 *            description: Email for the user, needs to be unique.
 *          username:
 *            type: string
 *          password:
 *            type: string
 *        example:
 *           name: Archhit
 *           surname: Dugar
 *           email: dugararchit@gmail.com
 *           username: dugararchit
 *           password: testpassword
 *    
 *      Login:
 *        type: object
 *        required:
 *          - email
 *          - password
 *        properties:
 *          email:
 *            type: string
 *            format: email
 *            description: Email for the user, needs to be unique.
 *          password:
 *            type: string
 *        example:
 *           email: dugararchit@gmail.com
 *           password: testpassword
 */

import bcrypt from "bcryptjs";
import { model, Schema } from "mongoose";

const userSchema = new Schema({
  name: {
    type: String,
    required: true,
  },
  surname: {
    type: String,
    required: true,
  },
  username: {
    type: String,
    required: true,
    lowercase: true,
  },
  email: {
    type: String,
    required: true,
    unique: true,
    lowercase: true,
  },
  password: {
    type: String,
    required: true,
  },
  registerDate: {
    type: Date,
    default: Date.now,
  },
});

userSchema.pre("save", async function (next) {
  const user = this;
  user.password = await bcrypt.hash(user.password, 10);
  next();
});

const User = model("User", userSchema);
export default User;
