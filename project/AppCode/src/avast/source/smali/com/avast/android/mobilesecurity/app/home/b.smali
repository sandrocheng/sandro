.class public Lcom/avast/android/mobilesecurity/app/home/b;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/home/b;->a:I

    .line 76
    iput p2, p0, Lcom/avast/android/mobilesecurity/app/home/b;->b:I

    .line 77
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/home/b;->c:Ljava/util/List;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/b;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/home/b;->a:I

    return v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/home/b;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/home/b;->b:I

    return v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/b;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
