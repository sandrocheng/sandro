.class public final enum Lacr$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lacr$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lacr$a;

.field public static final enum b:Lacr$a;

.field private static final synthetic c:[Lacr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lacr$a;

    const-string v1, "QuickScan"

    invoke-direct {v0, v1, v2}, Lacr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$a;->a:Lacr$a;

    new-instance v0, Lacr$a;

    const-string v1, "FullScan"

    invoke-direct {v0, v1, v3}, Lacr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lacr$a;->b:Lacr$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lacr$a;

    sget-object v1, Lacr$a;->a:Lacr$a;

    aput-object v1, v0, v2

    sget-object v1, Lacr$a;->b:Lacr$a;

    aput-object v1, v0, v3

    sput-object v0, Lacr$a;->c:[Lacr$a;

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

.method public static valueOf(Ljava/lang/String;)Lacr$a;
    .locals 1

    const-class v0, Lacr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lacr$a;

    return-object v0
.end method

.method public static values()[Lacr$a;
    .locals 1

    sget-object v0, Lacr$a;->c:[Lacr$a;

    invoke-virtual {v0}, [Lacr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lacr$a;

    return-object v0
.end method
