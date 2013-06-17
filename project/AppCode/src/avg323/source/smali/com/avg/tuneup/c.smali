.class Lcom/avg/tuneup/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/c/b;

.field final synthetic b:Lcom/avg/tuneup/b;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/b;Lcom/avg/ui/general/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/c;->b:Lcom/avg/tuneup/b;

    iput-object p2, p0, Lcom/avg/tuneup/c;->a:Lcom/avg/ui/general/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/c;->b:Lcom/avg/tuneup/b;

    iget-object v1, p0, Lcom/avg/tuneup/c;->a:Lcom/avg/ui/general/c/b;

    iget-object v1, v1, Lcom/avg/ui/general/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/b;->a(Ljava/lang/String;)V

    return-void
.end method
