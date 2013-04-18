.class public final Lcom/keniu/security/b/a;
.super Ljava/lang/Object;
.source "AppDatabaseConfig.java"

# interfaces
.implements Lcom/keniu/security/b/f;


# static fields
.field public static final a:I = 0x64

.field private static final b:I = 0x70

.field private static c:Lcom/keniu/security/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/keniu/security/b/a;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/keniu/security/b/a;->c:Lcom/keniu/security/b/a;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/keniu/security/b/a;

    invoke-direct {v0}, Lcom/keniu/security/b/a;-><init>()V

    sput-object v0, Lcom/keniu/security/b/a;->c:Lcom/keniu/security/b/a;

    .line 36
    :cond_0
    sget-object v0, Lcom/keniu/security/b/a;->c:Lcom/keniu/security/b/a;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "mosecurity_process_list.db"

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x70

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const-class v1, Lcom/jxphone/mosecurity/b/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-class v1, Lcom/jxphone/mosecurity/b/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const-class v1, Lcom/jxphone/mosecurity/b/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method
