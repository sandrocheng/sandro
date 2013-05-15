.class public Lcom/avast/android/generic/j;
.super Ljava/lang/Object;
.source "PackageConstants.java"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/avast/android/generic/j;->a:Ljava/util/List;

    .line 44
    sget-object v0, Lcom/avast/android/generic/j;->a:Ljava/util/List;

    const-string v1, "com.avast.android.antitheft"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/avast/android/generic/j;->a:Ljava/util/List;

    const-string v1, "com.avast.android.at_play"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/avast/android/generic/j;->a:Ljava/util/List;

    const-string v1, "com.avast.android.mobilesecurity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/avast/android/generic/j;->b:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/avast/android/generic/j;->b:Ljava/util/List;

    const-string v1, "com.avast.android.antitheft"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/avast/android/generic/j;->b:Ljava/util/List;

    const-string v1, "com.avast.android.at_play"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method
