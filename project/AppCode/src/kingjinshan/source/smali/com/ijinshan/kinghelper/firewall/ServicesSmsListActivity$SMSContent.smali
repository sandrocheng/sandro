.class public Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;
.super Ljava/lang/Object;
.source "ServicesSmsListActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ee;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/ee;-><init>()V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->a:J

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->b:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->c:I

    .line 398
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 407
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 408
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    return-void
.end method
