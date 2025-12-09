declare module '@apiverve/piglatin' {
  export interface piglatinOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface piglatinResponse {
    status: string;
    error: string | null;
    data: PigLatinData;
    code?: number;
  }


  interface PigLatinData {
      text:       string;
      exlcusions: string[];
  }

  export default class piglatinWrapper {
    constructor(options: piglatinOptions);

    execute(callback: (error: any, data: piglatinResponse | null) => void): Promise<piglatinResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: piglatinResponse | null) => void): Promise<piglatinResponse>;
    execute(query?: Record<string, any>): Promise<piglatinResponse>;
  }
}
