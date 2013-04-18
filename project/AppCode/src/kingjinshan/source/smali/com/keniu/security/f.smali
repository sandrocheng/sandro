.class public final enum Lcom/keniu/security/f;
.super Ljava/lang/Enum;
.source "Env.java"


# static fields
.field public static final enum a:Lcom/keniu/security/f;

.field public static final enum b:Lcom/keniu/security/f;

.field private static final synthetic d:[Lcom/keniu/security/f;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    new-instance v0, Lcom/keniu/security/f;

    const-string v1, "EAndroidReport"

    invoke-direct {v0, v1, v3, v2}, Lcom/keniu/security/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keniu/security/f;->a:Lcom/keniu/security/f;

    .line 99
    new-instance v0, Lcom/keniu/security/f;

    const-string v1, "ESymbianReport"

    invoke-direct {v0, v1, v2, v4}, Lcom/keniu/security/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/keniu/security/f;->b:Lcom/keniu/security/f;

    .line 97
    new-array v0, v4, [Lcom/keniu/security/f;

    sget-object v1, Lcom/keniu/security/f;->a:Lcom/keniu/security/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/keniu/security/f;->b:Lcom/keniu/security/f;

    aput-object v1, v0, v2

    sput-object v0, Lcom/keniu/security/f;->d:[Lcom/keniu/security/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/keniu/security/f;->c:I

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keniu/security/f;
    .locals 1
    .parameter

    .prologue
    .line 97
    const-class v0, Lcom/keniu/security/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/f;

    return-object p0
.end method

.method public static values()[Lcom/keniu/security/f;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/keniu/security/f;->d:[Lcom/keniu/security/f;

    invoke-virtual {v0}, [Lcom/keniu/security/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keniu/security/f;

    return-object v0
.end method
