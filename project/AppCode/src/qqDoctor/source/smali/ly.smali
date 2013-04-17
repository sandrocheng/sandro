.class public final Lly;
.super Lcom/tencent/tmsecure/module/aresengine/MmsPart;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/MmsPart;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/MmsPart;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/MmsPart;-><init>()V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentType:[B

    iput-object v0, p0, Lly;->contentType:[B

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->name:[B

    iput-object v0, p0, Lly;->name:[B

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->charset:I

    iput v0, p0, Lly;->charset:I

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentDispositon:[B

    iput-object v0, p0, Lly;->contentDispositon:[B

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->fileName:[B

    iput-object v0, p0, Lly;->fileName:[B

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentId:[B

    iput-object v0, p0, Lly;->contentId:[B

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentType:[B

    iput-object v0, p0, Lly;->contentType:[B

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->contentLocation:[B

    iput-object v0, p0, Lly;->contentLocation:[B

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->dataPath:Ljava/lang/String;

    iput-object v0, p0, Lly;->dataPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/MmsPart;->data:[B

    iput-object v0, p0, Lly;->data:[B

    return-void
.end method
