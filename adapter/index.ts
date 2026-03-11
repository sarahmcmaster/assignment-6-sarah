import startServer from './server'

async function main(): Promise<void> {
  await startServer(3000)
}

main().catch((error) => {
  console.error('Failed to start server:', error)
  process.exit(1)
})