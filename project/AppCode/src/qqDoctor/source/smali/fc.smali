.class public final enum Lfc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lfc;

.field public static final enum b:Lfc;

.field public static final enum c:Lfc;

.field private static enum d:Lfc;

.field private static final synthetic e:[Lfc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lfc;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lfc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfc;->a:Lfc;

    new-instance v0, Lfc;

    const-string v1, "WUP"

    invoke-direct {v0, v1, v3}, Lfc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfc;->d:Lfc;

    new-instance v0, Lfc;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lfc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfc;->b:Lfc;

    new-instance v0, Lfc;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lfc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfc;->c:Lfc;

    const/4 v0, 0x4

    new-array v0, v0, [Lfc;

    sget-object v1, Lfc;->a:Lfc;

    aput-object v1, v0, v2

    sget-object v1, Lfc;->d:Lfc;

    aput-object v1, v0, v3

    sget-object v1, Lfc;->b:Lfc;

    aput-object v1, v0, v4

    sget-object v1, Lfc;->c:Lfc;

    aput-object v1, v0, v5

    sput-object v0, Lfc;->e:[Lfc;

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

.method public static valueOf(Ljava/lang/String;)Lfc;
    .locals 1

    const-class v0, Lfc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfc;

    return-object v0
.end method

.method public static values()[Lfc;
    .locals 1

    sget-object v0, Lfc;->e:[Lfc;

    invoke-virtual {v0}, [Lfc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfc;

    return-object v0
.end method
