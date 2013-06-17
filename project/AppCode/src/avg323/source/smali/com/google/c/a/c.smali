.class public final enum Lcom/google/c/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/c/a/c;

.field public static final enum b:Lcom/google/c/a/c;

.field public static final enum c:Lcom/google/c/a/c;

.field public static final enum d:Lcom/google/c/a/c;

.field public static final enum e:Lcom/google/c/a/c;

.field private static final synthetic f:[Lcom/google/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/c/a/c;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v2}, Lcom/google/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/c;->a:Lcom/google/c/a/c;

    new-instance v0, Lcom/google/c/a/c;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/google/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/c;->b:Lcom/google/c/a/c;

    new-instance v0, Lcom/google/c/a/c;

    const-string v1, "TOO_SHORT_AFTER_IDD"

    invoke-direct {v0, v1, v4}, Lcom/google/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/c;->c:Lcom/google/c/a/c;

    new-instance v0, Lcom/google/c/a/c;

    const-string v1, "TOO_SHORT_NSN"

    invoke-direct {v0, v1, v5}, Lcom/google/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/c;->d:Lcom/google/c/a/c;

    new-instance v0, Lcom/google/c/a/c;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v6}, Lcom/google/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/c;->e:Lcom/google/c/a/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/c/a/c;

    sget-object v1, Lcom/google/c/a/c;->a:Lcom/google/c/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/a/c;->b:Lcom/google/c/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/c/a/c;->c:Lcom/google/c/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/a/c;->d:Lcom/google/c/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/c/a/c;->e:Lcom/google/c/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/c/a/c;->f:[Lcom/google/c/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/a/c;
    .locals 1

    const-class v0, Lcom/google/c/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/c;

    return-object v0
.end method

.method public static values()[Lcom/google/c/a/c;
    .locals 1

    sget-object v0, Lcom/google/c/a/c;->f:[Lcom/google/c/a/c;

    invoke-virtual {v0}, [Lcom/google/c/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/a/c;

    return-object v0
.end method
