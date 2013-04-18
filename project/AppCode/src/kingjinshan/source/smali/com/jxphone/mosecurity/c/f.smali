.class public final enum Lcom/jxphone/mosecurity/c/f;
.super Ljava/lang/Enum;
.source "Message.java"


# static fields
.field public static final enum a:Lcom/jxphone/mosecurity/c/f;

.field public static final enum b:Lcom/jxphone/mosecurity/c/f;

.field public static final enum c:Lcom/jxphone/mosecurity/c/f;

.field private static final synthetic e:[Lcom/jxphone/mosecurity/c/f;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/jxphone/mosecurity/c/f;

    const-string v1, "UNDEFIND"

    const-string v2, "undefind"

    invoke-direct {v0, v1, v3, v2}, Lcom/jxphone/mosecurity/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jxphone/mosecurity/c/f;->a:Lcom/jxphone/mosecurity/c/f;

    .line 14
    new-instance v0, Lcom/jxphone/mosecurity/c/f;

    const-string v1, "TEXT_PLAIN"

    const-string v2, "text/plain"

    invoke-direct {v0, v1, v4, v2}, Lcom/jxphone/mosecurity/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jxphone/mosecurity/c/f;->b:Lcom/jxphone/mosecurity/c/f;

    .line 15
    new-instance v0, Lcom/jxphone/mosecurity/c/f;

    const-string v1, "TEXT_HTML"

    const-string v2, "text/htm"

    invoke-direct {v0, v1, v5, v2}, Lcom/jxphone/mosecurity/c/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jxphone/mosecurity/c/f;->c:Lcom/jxphone/mosecurity/c/f;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jxphone/mosecurity/c/f;

    sget-object v1, Lcom/jxphone/mosecurity/c/f;->a:Lcom/jxphone/mosecurity/c/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jxphone/mosecurity/c/f;->b:Lcom/jxphone/mosecurity/c/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jxphone/mosecurity/c/f;->c:Lcom/jxphone/mosecurity/c/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jxphone/mosecurity/c/f;->e:[Lcom/jxphone/mosecurity/c/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/jxphone/mosecurity/c/f;->d:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/f;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/jxphone/mosecurity/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jxphone/mosecurity/c/f;

    return-object p0
.end method

.method public static values()[Lcom/jxphone/mosecurity/c/f;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/jxphone/mosecurity/c/f;->e:[Lcom/jxphone/mosecurity/c/f;

    invoke-virtual {v0}, [Lcom/jxphone/mosecurity/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jxphone/mosecurity/c/f;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/f;->d:Ljava/lang/String;

    return-object v0
.end method
