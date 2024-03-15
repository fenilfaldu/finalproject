import React,{useState} from 'react'
import Card from './card'
import OpenAI from 'openai'

export default function Main() {
  const [prompt,setPromt] = useState()
  const [img,setImg] = useState()

  const openai = new OpenAI({apiKey:"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", dangerouslyAllowBrowser: true})
  const generate=async()=>{
    // const image = await openai.images.generate({

    //   model:"dall-e-3",
    //   prompt:`${prompt}`,
    //   size:"1024x1024",
    //   quality:"standard",
    //   n:1
    // })
    //   setImg(image.data[0].url)
    console.log(prompt)
    }
  return (
    <div>
      <input type="text" placeholder='Enter Prompt Here !' onChange={(e)=>{setPromt(e.target.value)}}/>
      <button onClick={generate}>Generate</button>
      <Card img={img}/>
    </div>
  )
}
