.class public final enum Lcom/google/c/a/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/c/a/q;

.field public static final enum b:Lcom/google/c/a/q;

.field public static final enum c:Lcom/google/c/a/q;

.field public static final enum d:Lcom/google/c/a/q;

.field private static final synthetic e:[Lcom/google/c/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/c/a/q;

    const-string v1, "FROM_NUMBER_WITH_PLUS_SIGN"

    invoke-direct {v0, v1, v2}, Lcom/google/c/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/q;->a:Lcom/google/c/a/q;

    new-instance v0, Lcom/google/c/a/q;

    const-string v1, "FROM_NUMBER_WITH_IDD"

    invoke-direct {v0, v1, v3}, Lcom/google/c/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/q;->b:Lcom/google/c/a/q;

    new-instance v0, Lcom/google/c/a/q;

    const-string v1, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    invoke-direct {v0, v1, v4}, Lcom/google/c/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/q;->c:Lcom/google/c/a/q;

    new-instance v0, Lcom/google/c/a/q;

    const-string v1, "FROM_DEFAULT_COUNTRY"

    invoke-direct {v0, v1, v5}, Lcom/google/c/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/q;->d:Lcom/google/c/a/q;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/c/a/q;

    sget-object v1, Lcom/google/c/a/q;->a:Lcom/google/c/a/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/a/q;->b:Lcom/google/c/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/c/a/q;->c:Lcom/google/c/a/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/a/q;->d:Lcom/google/c/a/q;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/c/a/q;->e:[Lcom/google/c/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/a/q;
    .locals 1

    const-class v0, Lcom/google/c/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/q;

    return-object v0
.end method

.method public static values()[Lcom/google/c/a/q;
    .locals 1

    sget-object v0, Lcom/google/c/a/q;->e:[Lcom/google/c/a/q;

    invoke-virtual {v0}, [Lcom/google/c/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/a/q;

    return-object v0
.end method
