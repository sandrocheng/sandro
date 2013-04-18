.class public final Lcom/keniu/security/a/s;
.super Ljava/lang/Object;
.source "isADCache.java"


# static fields
.field private static a:Ljava/util/HashMap;

.field private static b:Ljava/util/ArrayList;

.field private static c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/keniu/security/a/s;->a:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keniu/security/a/s;->b:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keniu/security/a/s;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/keniu/security/a/s;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/keniu/security/a/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    sput-object p0, Lcom/keniu/security/a/s;->b:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private static a(Ljava/util/HashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    sput-object p0, Lcom/keniu/security/a/s;->a:Ljava/util/HashMap;

    .line 12
    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/keniu/security/a/s;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    sput-object p0, Lcom/keniu/security/a/s;->c:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public static c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/keniu/security/a/s;->c:Ljava/util/ArrayList;

    return-object v0
.end method
