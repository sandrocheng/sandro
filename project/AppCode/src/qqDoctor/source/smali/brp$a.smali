.class final enum Lbrp$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbrp$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbrp$a;

.field public static final enum b:Lbrp$a;

.field public static final enum c:Lbrp$a;

.field public static final enum d:Lbrp$a;

.field public static final enum e:Lbrp$a;

.field private static final synthetic f:[Lbrp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbrp$a;

    const-string v1, "EQuckScan"

    invoke-direct {v0, v1, v2}, Lbrp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrp$a;->a:Lbrp$a;

    new-instance v0, Lbrp$a;

    const-string v1, "EScanCancelAndRetrun"

    invoke-direct {v0, v1, v3}, Lbrp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrp$a;->b:Lbrp$a;

    new-instance v0, Lbrp$a;

    const-string v1, "EScanDone"

    invoke-direct {v0, v1, v4}, Lbrp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrp$a;->c:Lbrp$a;

    new-instance v0, Lbrp$a;

    const-string v1, "EReturn"

    invoke-direct {v0, v1, v5}, Lbrp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrp$a;->d:Lbrp$a;

    new-instance v0, Lbrp$a;

    const-string v1, "EFinish"

    invoke-direct {v0, v1, v6}, Lbrp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrp$a;->e:Lbrp$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lbrp$a;

    sget-object v1, Lbrp$a;->a:Lbrp$a;

    aput-object v1, v0, v2

    sget-object v1, Lbrp$a;->b:Lbrp$a;

    aput-object v1, v0, v3

    sget-object v1, Lbrp$a;->c:Lbrp$a;

    aput-object v1, v0, v4

    sget-object v1, Lbrp$a;->d:Lbrp$a;

    aput-object v1, v0, v5

    sget-object v1, Lbrp$a;->e:Lbrp$a;

    aput-object v1, v0, v6

    sput-object v0, Lbrp$a;->f:[Lbrp$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbrp$a;
    .locals 1

    const-class v0, Lbrp$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbrp$a;

    return-object v0
.end method

.method public static values()[Lbrp$a;
    .locals 1

    sget-object v0, Lbrp$a;->f:[Lbrp$a;

    invoke-virtual {v0}, [Lbrp$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbrp$a;

    return-object v0
.end method
