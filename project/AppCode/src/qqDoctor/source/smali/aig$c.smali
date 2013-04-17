.class final Laig$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Laig;


# direct methods
.method private constructor <init>(Laig;I)V
    .locals 0

    iput-object p1, p0, Laig$c;->b:Laig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laig$c;->a:I

    return-void
.end method

.method synthetic constructor <init>(Laig;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laig$c;-><init>(Laig;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laig$c;->b:Laig;

    invoke-static {v0}, Laig;->a(Laig;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Laig$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Laig$c;->b:Laig;

    invoke-static {v1}, Laig;->a(Laig;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
