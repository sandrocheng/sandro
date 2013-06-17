.class public final enum Lcom/avg/toolkit/e/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/toolkit/e/d;

.field public static final enum b:Lcom/avg/toolkit/e/d;

.field private static final synthetic c:[Lcom/avg/toolkit/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avg/toolkit/e/d;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/toolkit/e/d;->a:Lcom/avg/toolkit/e/d;

    new-instance v0, Lcom/avg/toolkit/e/d;

    const-string v1, "PRO"

    invoke-direct {v0, v1, v3}, Lcom/avg/toolkit/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/toolkit/e/d;->b:Lcom/avg/toolkit/e/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avg/toolkit/e/d;

    sget-object v1, Lcom/avg/toolkit/e/d;->a:Lcom/avg/toolkit/e/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/toolkit/e/d;->b:Lcom/avg/toolkit/e/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avg/toolkit/e/d;->c:[Lcom/avg/toolkit/e/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/toolkit/e/d;
    .locals 1

    const-class v0, Lcom/avg/toolkit/e/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e/d;

    return-object v0
.end method

.method public static values()[Lcom/avg/toolkit/e/d;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/e/d;->c:[Lcom/avg/toolkit/e/d;

    invoke-virtual {v0}, [Lcom/avg/toolkit/e/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/toolkit/e/d;

    return-object v0
.end method
