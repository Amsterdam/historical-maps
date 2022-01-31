import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

export function sourceDataFilename(name) {
  return path.join(__dirname, '..', 'source-data', name)
}

export function readFile(filename) {
  return fs.readFileSync(filename, 'utf8')
}

export function readJson(filename) {
  return JSON.parse(readFile(filename))
}
