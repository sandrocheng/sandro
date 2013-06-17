.class final Lcom/avg/ui/license/qrreader/general/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final a:Lcom/avg/ui/license/qrreader/general/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/avg/ui/license/qrreader/general/ViewfinderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/ui/license/qrreader/general/p;->a:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/p;->a:Lcom/avg/ui/license/qrreader/general/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/avg/ui/license/qrreader/general/ViewfinderView;->a(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
