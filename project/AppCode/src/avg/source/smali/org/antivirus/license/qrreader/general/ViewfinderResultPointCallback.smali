.class final Lorg/antivirus/license/qrreader/general/ViewfinderResultPointCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;


# direct methods
.method constructor <init>(Lorg/antivirus/license/qrreader/general/ViewfinderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/license/qrreader/general/ViewfinderResultPointCallback;->viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;

    return-void
.end method


# virtual methods
.method public final foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/license/qrreader/general/ViewfinderResultPointCallback;->viewfinderView:Lorg/antivirus/license/qrreader/general/ViewfinderView;

    invoke-virtual {v0, p1}, Lorg/antivirus/license/qrreader/general/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
