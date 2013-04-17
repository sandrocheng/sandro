.class public abstract Lmx$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lmx$b;->b:I

    iput p2, p0, Lmx$b;->b:I

    iput p1, p0, Lmx$b;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
.end method
