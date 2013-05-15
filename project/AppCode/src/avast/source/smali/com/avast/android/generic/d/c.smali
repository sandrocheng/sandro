.class public Lcom/avast/android/generic/d/c;
.super Ljava/lang/Object;
.source "PreferenceDAO.java"

# interfaces
.implements Lcom/avast/android/generic/d/e;


# instance fields
.field private a:Lcom/avast/android/generic/ae;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    .line 17
    iput-object v0, p0, Lcom/avast/android/generic/d/c;->b:Landroid/content/Context;

    .line 22
    iput-object p1, p0, Lcom/avast/android/generic/d/c;->b:Landroid/content/Context;

    .line 23
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/d/c;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected a()Lcom/avast/android/generic/ae;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->a()V

    .line 46
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;I)V

    .line 47
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->a()V

    .line 63
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->a()V

    .line 29
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 30
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/d/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avast/android/generic/d/c;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
