.class public Lcom/avast/android/mobilesecurity/a/a;
.super Ljava/lang/Object;
.source "AuthorizationHandlerImpl.java"

# interfaces
.implements Lcom/avast/android/generic/a/a;


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

.field private c:Lcom/avast/android/mobilesecurity/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/mobilesecurity/a/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;Lcom/avast/android/mobilesecurity/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/a/a;->b:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    .line 26
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/a/a;->c:Lcom/avast/android/mobilesecurity/t;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    sput-boolean p1, Lcom/avast/android/mobilesecurity/a/a;->a:Z

    .line 51
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/a/a;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/a/a;->b:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->z:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 55
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 36
    sget-wide v0, Lcom/avast/android/generic/ui/BaseActivity;->f:J

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/a/a;->c:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->aZ()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/mobilesecurity/a/a;->a:Z

    .line 40
    :cond_0
    sget-boolean v0, Lcom/avast/android/mobilesecurity/a/a;->a:Z

    return v0
.end method
