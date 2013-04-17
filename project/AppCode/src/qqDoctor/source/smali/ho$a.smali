.class public final enum Lho$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lho$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lho$a;

.field public static final enum b:Lho$a;

.field private static final synthetic c:[Lho$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lho$a;

    const-string v1, "EShowRamUseage"

    invoke-direct {v0, v1, v2}, Lho$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lho$a;->a:Lho$a;

    new-instance v0, Lho$a;

    const-string v1, "ERocket"

    invoke-direct {v0, v1, v3}, Lho$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lho$a;->b:Lho$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lho$a;

    sget-object v1, Lho$a;->a:Lho$a;

    aput-object v1, v0, v2

    sget-object v1, Lho$a;->b:Lho$a;

    aput-object v1, v0, v3

    sput-object v0, Lho$a;->c:[Lho$a;

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

.method public static valueOf(Ljava/lang/String;)Lho$a;
    .locals 1

    const-class v0, Lho$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lho$a;

    return-object v0
.end method

.method public static values()[Lho$a;
    .locals 1

    sget-object v0, Lho$a;->c:[Lho$a;

    invoke-virtual {v0}, [Lho$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lho$a;

    return-object v0
.end method
