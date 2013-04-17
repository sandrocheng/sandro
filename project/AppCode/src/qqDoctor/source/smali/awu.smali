.class final Lawu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lmk;

.field private synthetic b:Lawt;


# direct methods
.method constructor <init>(Lawt;Lmk;)V
    .locals 0

    iput-object p1, p0, Lawu;->b:Lawt;

    iput-object p2, p0, Lawu;->a:Lmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lawu;->b:Lawt;

    iget-object v1, p0, Lawu;->a:Lmk;

    invoke-static {v0, v1}, Lawt;->a(Lawt;Lmk;)V

    return-void
.end method
