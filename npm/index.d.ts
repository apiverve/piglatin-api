declare module '@apiverve/piglatin' {
  export interface piglatinOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface piglatinResponse {
    status: string;
    error: string | null;
    data: PigLatinData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PigLatinData {
      text:       null | string;
      exlcusions: (null | string)[];
  }

  export default class piglatinWrapper {
    constructor(options: piglatinOptions);

    execute(callback: (error: any, data: piglatinResponse | null) => void): Promise<piglatinResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: piglatinResponse | null) => void): Promise<piglatinResponse>;
    execute(query?: Record<string, any>): Promise<piglatinResponse>;
  }
}
