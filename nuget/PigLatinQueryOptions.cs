using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PigLatin
{
    /// <summary>
    /// Query options for the Pig Latin API
    /// </summary>
    public class PigLatinQueryOptions
    {
        /// <summary>
        /// The text to encode in Pig Latin
        /// Example: hello world
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// Words to exclude from encoding
        /// </summary>
        [JsonProperty("exclusions")]
        public string Exclusions { get; set; }
    }
}
