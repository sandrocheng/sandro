.class public Lcom/avast/android/generic/app/account/u;
.super Ljava/lang/Object;
.source "BackupValidIndicator.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/avast/android/generic/app/account/v;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/account/u;->a(Lcom/avast/android/generic/app/account/v;)V

    .line 20
    invoke-direct {p0, p2}, Lcom/avast/android/generic/app/account/u;->a(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private a(Lcom/avast/android/generic/app/account/v;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/avast/android/generic/app/account/u;->b:Lcom/avast/android/generic/app/account/v;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/avast/android/generic/app/account/u;->a:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/app/account/v;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/generic/app/account/u;->b:Lcom/avast/android/generic/app/account/v;

    return-object v0
.end method
