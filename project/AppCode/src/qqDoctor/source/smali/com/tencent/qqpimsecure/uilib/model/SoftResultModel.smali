.class public Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;
.super Lcom/tencent/qqpimsecure/uilib/model/ResultModel;


# static fields
.field public static final TYPE_ID:I = 0x1

.field public static final TYPE_NAME:I = 0x2

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_PATH:I = 0x3


# instance fields
.field private mType:I

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mType:I

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mType:I

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p5

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mType:I

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p5

    move-wide v4, p6

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;JLjava/lang/String;)V

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mType:I

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mType:I

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawableType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mType:I

    return v0
.end method

.method public getDrawableValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->mValue:Ljava/lang/String;

    return-object v0
.end method
