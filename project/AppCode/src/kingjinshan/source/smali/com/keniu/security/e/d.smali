.class public final enum Lcom/keniu/security/e/d;
.super Ljava/lang/Enum;
.source "DataObserver.java"


# static fields
.field public static final enum a:Lcom/keniu/security/e/d;

.field public static final enum b:Lcom/keniu/security/e/d;

.field public static final enum c:Lcom/keniu/security/e/d;

.field private static final synthetic d:[Lcom/keniu/security/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/keniu/security/e/d;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/e/d;->a:Lcom/keniu/security/e/d;

    .line 12
    new-instance v0, Lcom/keniu/security/e/d;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/keniu/security/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    .line 13
    new-instance v0, Lcom/keniu/security/e/d;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/keniu/security/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/e/d;->c:Lcom/keniu/security/e/d;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/keniu/security/e/d;

    sget-object v1, Lcom/keniu/security/e/d;->a:Lcom/keniu/security/e/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/keniu/security/e/d;->c:Lcom/keniu/security/e/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/keniu/security/e/d;->d:[Lcom/keniu/security/e/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keniu/security/e/d;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/keniu/security/e/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/e/d;

    return-object p0
.end method

.method public static values()[Lcom/keniu/security/e/d;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/keniu/security/e/d;->d:[Lcom/keniu/security/e/d;

    invoke-virtual {v0}, [Lcom/keniu/security/e/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keniu/security/e/d;

    return-object v0
.end method
