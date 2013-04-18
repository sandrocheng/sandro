.class final enum Lcom/hoi/widget/t;
.super Ljava/lang/Enum;
.source "NumTypePreference.java"


# static fields
.field public static final enum a:Lcom/hoi/widget/t;

.field public static final enum b:Lcom/hoi/widget/t;

.field private static final synthetic c:[Lcom/hoi/widget/t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/hoi/widget/t;

    const-string v1, "INT"

    invoke-direct {v0, v1, v2}, Lcom/hoi/widget/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoi/widget/t;->a:Lcom/hoi/widget/t;

    new-instance v0, Lcom/hoi/widget/t;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v3}, Lcom/hoi/widget/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoi/widget/t;->b:Lcom/hoi/widget/t;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hoi/widget/t;

    sget-object v1, Lcom/hoi/widget/t;->a:Lcom/hoi/widget/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hoi/widget/t;->b:Lcom/hoi/widget/t;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hoi/widget/t;->c:[Lcom/hoi/widget/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hoi/widget/t;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/hoi/widget/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hoi/widget/t;

    return-object p0
.end method

.method public static values()[Lcom/hoi/widget/t;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/hoi/widget/t;->c:[Lcom/hoi/widget/t;

    invoke-virtual {v0}, [Lcom/hoi/widget/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hoi/widget/t;

    return-object v0
.end method
