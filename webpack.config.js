const CompressionPlugin = require("compression-webpack-plugin");
const BrotliPlugin = require("brotli-webpack-plugin");

module.exports = {
  plugins: [
    new CompressionPlugin({
      test: /\.(js|css|html|svg|eot|woff2|woff|ttf)$/,
      algorithm: 'gzip',
      minRatio: 0.8
    }),
    new BrotliPlugin({
      asset: '[path].br[query]',
      test: /\.(js|css|html|svg|eot|woff2|woff|ttf)$/,
      minRatio: 0.8
    }),
  ],
};
