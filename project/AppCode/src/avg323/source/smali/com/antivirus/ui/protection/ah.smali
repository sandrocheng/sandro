.class final enum Lcom/antivirus/ui/protection/ah;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/antivirus/ui/protection/ah;

.field public static final enum b:Lcom/antivirus/ui/protection/ah;

.field public static final enum c:Lcom/antivirus/ui/protection/ah;

.field public static final enum d:Lcom/antivirus/ui/protection/ah;

.field public static final enum e:Lcom/antivirus/ui/protection/ah;

.field public static final enum f:Lcom/antivirus/ui/protection/ah;

.field public static final enum g:Lcom/antivirus/ui/protection/ah;

.field public static final enum h:Lcom/antivirus/ui/protection/ah;

.field private static final synthetic j:[Lcom/antivirus/ui/protection/ah;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/antivirus/ui/protection/ah;

    const-string v1, "PROTECTION_UPDATE_NOW"

    invoke-direct {v0, v1, v4, v4}, Lcom/antivirus/ui/protection/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/protection/ah;->a:Lcom/antivirus/ui/protection/ah;

    new-instance v0, Lcom/antivirus/ui/protection/ah;

    const-string v1, "PROTECTION_SCAN_NOW"

    sget-object v2, Lcom/antivirus/ui/protection/ah;->a:Lcom/antivirus/ui/protection/ah;

    iget v2, v2, Lcom/antivirus/ui/protection/ah;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/antivirus/ui/protection/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/protection/ah;->b:Lcom/antivirus/ui/protection/ah;

    new-instance v0, Lcom/antivirus/ui/protection/ah;

    const-string v1, "PROTECTION_SCAN_FREQ"

    sget-object v2, Lcom/antivirus/ui/protection/ah;->b:Lcom/antivirus/ui/protection/ah;

    iget v2, v2, Lcom/antivirus/ui/protection/ah;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lcom/antivirus/ui/protection/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/protection/ah;->c:Lcom/antivirus/ui/protection/ah;

    new-instance v0, Lcom/antivirus/ui/protection/ah;

    const-string v1, "PROTECTION_FILE_SCANNER"

    sget-object v2, Lcom/antivirus/ui/protection/ah;->c:Lcom/antivirus/ui/protection/ah;

    iget v2, v2, Lcom/antivirus/ui/protection/ah;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/antivirus/ui/protection/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/protection/ah;->d:Lcom/antivirus/ui/protection/ah;

    new-instance v0, Lcom/antivirus/ui/protection/ah;

    const-string v1, "PROTECTION_URL_FILTERING"

    sget-object v2, Lcom/antivirus/ui/protection/ah;->d:Lcom/antivirus/ui/protection/ah;

    iget v2, v2, Lcom/antivirus/ui/protection/ah;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v8, v2}, Lcom/antivirus/ui/protection/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/protection/ah;->e:Lcom/antivirus/ui/protection/ah;

    new-instance v0, Lcom/antivirus/ui/protection/ah;

    const-string v1, "PROTECTION_SD_SCAN"

    const/4 v2, 0x5

    sget-object v3, Lcom/antivirus/ui/protection/ah;->e:Lcom/antivirus/ui/protection/ah;

    iget v3, v3, Lcom/antivirus/ui/protection/ah;->i:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/antivirus/ui/protection/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/protection/ah;->f:Lcom/antivirus/ui/protection/ah;

    new-instance v0, Lcom/antivirus/ui/protection/ah;

    const-string v1, "PROTECTION_TEXT_MESSAGES"

    const/4 v2, 0x6

    sget-object v3, Lcom/antivirus/ui/protection/ah;->f:Lcom/antivirus/ui/protection/ah;

    iget v3, v3, Lcom/antivirus/ui/protection/ah;->i:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/antivirus/ui/protection/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/protection/ah;->g:Lcom/antivirus/ui/protection/ah;

    new-instance v0, Lcom/antivirus/ui/protection/ah;

    const-string v1, "PROTECTION_ENABLE_PUP"

    const/4 v2, 0x7

    sget-object v3, Lcom/antivirus/ui/protection/ah;->g:Lcom/antivirus/ui/protection/ah;

    iget v3, v3, Lcom/antivirus/ui/protection/ah;->i:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/antivirus/ui/protection/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/ui/protection/ah;->h:Lcom/antivirus/ui/protection/ah;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/antivirus/ui/protection/ah;

    sget-object v1, Lcom/antivirus/ui/protection/ah;->a:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/ui/protection/ah;->b:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v5

    sget-object v1, Lcom/antivirus/ui/protection/ah;->c:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v6

    sget-object v1, Lcom/antivirus/ui/protection/ah;->d:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v7

    sget-object v1, Lcom/antivirus/ui/protection/ah;->e:Lcom/antivirus/ui/protection/ah;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/antivirus/ui/protection/ah;->f:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/antivirus/ui/protection/ah;->g:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/antivirus/ui/protection/ah;->h:Lcom/antivirus/ui/protection/ah;

    aput-object v2, v0, v1

    sput-object v0, Lcom/antivirus/ui/protection/ah;->j:[Lcom/antivirus/ui/protection/ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/antivirus/ui/protection/ah;->i:I

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/protection/ah;)I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/protection/ah;->i:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/protection/ah;
    .locals 1

    const-class v0, Lcom/antivirus/ui/protection/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/protection/ah;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/protection/ah;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/protection/ah;->j:[Lcom/antivirus/ui/protection/ah;

    invoke-virtual {v0}, [Lcom/antivirus/ui/protection/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/protection/ah;

    return-object v0
.end method
