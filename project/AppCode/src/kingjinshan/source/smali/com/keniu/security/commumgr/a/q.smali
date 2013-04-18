.class public final enum Lcom/keniu/security/commumgr/a/q;
.super Ljava/lang/Enum;
.source "RpException.java"


# static fields
.field public static final enum a:Lcom/keniu/security/commumgr/a/q;

.field public static final enum b:Lcom/keniu/security/commumgr/a/q;

.field public static final enum c:Lcom/keniu/security/commumgr/a/q;

.field private static final synthetic e:[Lcom/keniu/security/commumgr/a/q;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/keniu/security/commumgr/a/q;

    const-string v1, "Unknow"

    const v2, 0x7f0b0469

    invoke-direct {v0, v1, v3, v2}, Lcom/keniu/security/commumgr/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keniu/security/commumgr/a/q;->a:Lcom/keniu/security/commumgr/a/q;

    .line 37
    new-instance v0, Lcom/keniu/security/commumgr/a/q;

    const-string v1, "NetworkError"

    const v2, 0x7f0b046b

    invoke-direct {v0, v1, v4, v2}, Lcom/keniu/security/commumgr/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    .line 38
    new-instance v0, Lcom/keniu/security/commumgr/a/q;

    const-string v1, "IsAlreadyRunning"

    const v2, 0x7f0b046a

    invoke-direct {v0, v1, v5, v2}, Lcom/keniu/security/commumgr/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keniu/security/commumgr/a/q;->c:Lcom/keniu/security/commumgr/a/q;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/keniu/security/commumgr/a/q;

    sget-object v1, Lcom/keniu/security/commumgr/a/q;->a:Lcom/keniu/security/commumgr/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/keniu/security/commumgr/a/q;->b:Lcom/keniu/security/commumgr/a/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/keniu/security/commumgr/a/q;->c:Lcom/keniu/security/commumgr/a/q;

    aput-object v1, v0, v5

    sput-object v0, Lcom/keniu/security/commumgr/a/q;->e:[Lcom/keniu/security/commumgr/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/keniu/security/commumgr/a/q;->d:I

    .line 42
    return-void
.end method

.method public static a(I)Lcom/keniu/security/commumgr/a/q;
    .locals 5
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/keniu/security/commumgr/a/q;->values()[Lcom/keniu/security/commumgr/a/q;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 47
    iget v4, v3, Lcom/keniu/security/commumgr/a/q;->d:I

    if-ne v4, p0, :cond_0

    move-object v0, v3

    .line 49
    :goto_1
    return-object v0

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keniu/security/commumgr/a/q;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/keniu/security/commumgr/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/commumgr/a/q;

    return-object p0
.end method

.method public static values()[Lcom/keniu/security/commumgr/a/q;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/commumgr/a/q;->e:[Lcom/keniu/security/commumgr/a/q;

    invoke-virtual {v0}, [Lcom/keniu/security/commumgr/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keniu/security/commumgr/a/q;

    return-object v0
.end method
