.class public Lcom/avast/android/generic/ui/a;
.super Ljava/lang/Object;
.source "BaseMultiPaneActivity.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/ui/BaseMultiPaneActivity;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/avast/android/generic/ui/a;->a:Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/avast/android/generic/ui/a;->b:Ljava/lang/Class;

    .line 136
    iput-object p3, p0, Lcom/avast/android/generic/ui/a;->c:Ljava/lang/String;

    .line 137
    iput p4, p0, Lcom/avast/android/generic/ui/a;->d:I

    .line 138
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/avast/android/generic/ui/a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/avast/android/generic/ui/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/avast/android/generic/ui/a;->d:I

    return v0
.end method
